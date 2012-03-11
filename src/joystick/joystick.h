/****************************************************************************
**
**    This file is part of Lorris.
**    Copyright (C) 2012 Vojtěch Boček
**
**    Contact: <vbocek@gmail.com>
**             https://github.com/Tasssadar
**
**    Lorris is free software: you can redistribute it and/or modify
**    it under the terms of the GNU General Public License as published by
**    the Free Software Foundation, either version 3 of the License, or
**    (at your option) any later version.
**
**    Lorris is distributed in the hope that it will be useful,
**    but WITHOUT ANY WARRANTY; without even the implied warranty of
**    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**    GNU General Public License for more details.
**
**    You should have received a copy of the GNU General Public License
**    along with Lorris.  If not, see <http://www.gnu.org/licenses/>.
**
****************************************************************************/

#ifndef JOYSTICK_H
#define JOYSTICK_H

#include <QObject>

#ifdef Q_OS_WIN
    #include <SDL.h>
#else // use lib from OS on other systems
    #include <SDL/SDL.h>
#endif

class Joystick : public QObject
{
    Q_OBJECT

Q_SIGNALS:
    void __axisEvent(int id, qint16 val);
    void __ballEvent(int id, qint16 x, qint16 y);
    void __hatEvent(int id, quint8 val);
    void __buttonEvent(int id, quint8 state);

public:
    Joystick(int id, QObject *parent = 0);
    ~Joystick();

    bool open();

    int getNumAxes() const { return m_num_axes; }
    int getNumBalls() const { return m_num_balls; }
    int getNumHats() const { return m_num_hats; }
    int getNumButtons() const { return m_num_buttons; }

    void axisEvent(int id, qint16 val)
    {
        emit __axisEvent(id, val);
    }

    void ballEvent(int id, qint16 x, qint16 y)
    {
        emit __ballEvent(id, x, y);
    }

    void hatEvent(int id, quint8 val)
    {
        emit __hatEvent(id, val);
    }

    void buttonEvent(int id, quint8 state)
    {
        emit __buttonEvent(id, state);
    }

private:
    int m_id;
    SDL_Joystick *m_joy;

    int m_num_axes;
    int m_num_balls;
    int m_num_hats;
    int m_num_buttons;
};

#endif // JOYSTICK_H
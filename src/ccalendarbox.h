/****************************************************************************
 **
 ** Copyright (C) 2009 Evgeniy V. Sergeev.  All rights reserved.
 **
 ** This file may be used under the terms of the GNU General Public
 ** License version 2.0 as published by the Free Software Foundation
 ** and appearing in the file LICENSE.GPL included in the packaging of
 ** this file.  Please review the following information to ensure GNU
 ** General Public Licensing requirements will be met:
 ** http://www.trolltech.com/products/qt/opensource.html
 **
 ** If you are unsure which license is appropriate for your use, please
 ** review the following information:
 ** http://www.trolltech.com/products/qt/licensing.html or contact the
 ** sales department at sales@trolltech.com.
 **
 ** This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
 ** WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 **
 ** AUTHOR: Evgeniy V. Sergeev <evgeniy.sergeev@gmail.com>
 **
 ****************************************************************************/
#ifndef __CCALENDARBOX_H__
#define __CCALENDARBOX_H__

#include <CMsgBox>
#include <QCalendarWidget>

class CCalendarBox : public CMsgBox
{
Q_OBJECT
public:
    CCalendarBox( QWidget* parent=0 );

public:
    void            setDate(const QDate& aDate);
    QDate           getDate() const;
    virtual void    adjustSize();

protected:
    QCalendarWidget mCalendar;
};


#endif // __CCALENDARBOX_H__

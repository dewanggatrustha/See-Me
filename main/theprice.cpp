#include "theprice.h"
#include <QDebug>

ThePrice::ThePrice(QObject *parent) : QObject(parent)
{

}

int ThePrice::harga() const
{
    return m_harga;
}

void ThePrice::setHarga(int value)
{
    value=0;
    if(m_harga != value){
        m_harga = value;
        emit hargaChanged();
    }
}

void ThePrice::hargatentu(const QString &text)
{
    qDebug()<<"menentukan"<< text;
    setHarga(m_harga + 35000);

}

void ThePrice::hargatolak(const QString &text)
{
    qDebug()<<"menentukan"<<text;
    setHarga(m_harga - 35000);
}

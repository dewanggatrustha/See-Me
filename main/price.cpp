#include "price.h"
#include <QDebug>

Price::Price(QObject *parent) : QObject(parent)
{

}

Price::Price() : m_harga(0)
{
}

int Price::harga() const
{
    return m_harga;
}


void Price::setHarga(int nilai)
{
    if(m_harga != nilai){
        m_harga = nilai;
     hargaChanged();}
}

void Price::hargatentu(const QString &text)
{
    qDebug()<<"setting"<<text;
    setHarga(m_harga + 35000);
}






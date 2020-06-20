#ifndef THEPRICE_H
#define THEPRICE_H

#include <QObject>

class ThePrice : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int harga READ harga WRITE setharga NOTIFY hargaChanged)

public:
    explicit ThePrice(QObject *parent = nullptr);
    int harga()const;
    void setHarga(int value);

signals:
    void hargaChanged();

public slots:
    void hargatentu(const QString &text);
    void hargatolak(const QString &text);

private:
    int m_harga;
};

#endif // THEPRICE_H

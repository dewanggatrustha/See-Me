#ifndef PRICE_H
#define PRICE_H

#include <QObject>


class Price : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int harga READ harga WRITE setHarga NOTIFY hargaChanged)

public:
    explicit Price(QObject *parent = nullptr);
public:
    Price();
    int harga() const;
    void setHarga(int nilai);


signals:
    void hargaChanged();


public slots:
    void hargatentu(const QString &text);

private:
    int m_harga;
};

#endif // PRICE_H

//
//  main.swift
//  calculator
//
//  Created by ELİF on 5.09.2024.
//

import Foundation

/* 1. Hesap Makinesi (Temel)
Kapsanan Konular: Değişkenler, koşullu ifadeler, fonksiyonlar
Açıklama: Basit bir hesap makinesi uygulaması geliştir. Toplama, çıkarma, çarpma ve bölme işlemlerini yapabilen bir fonksiyon oluştur.
Öneri: Fonksiyonları farklı parametre türleriyle aşırı yükle (function overloading). Örneğin, hem tam sayı hem de ondalıklı sayı kabul eden fonksiyonlar yaz. */



/* func topla (number1 : Int , number2 : Int , number3 : Int, number4 : Int , number5 : Int)
{

   print(number1 + number2 + number3 + number4 + number5)
    
}


topla(number1: 2, number2: 14, number3: 1113, number4: 458, number5: )
 */



func topla () 
{

    print("kaç sayı girmek istiyorsunuz?")
    
    if let adminGirisi = readLine()  ,    // if let yapısı, kullanıcının girdiği değerin nil olup olmadığını kontrol eder. Eğer bir değer varsa (nil değilse), adminGirisi değişkenine atanır ve işlem devam eder.
       let netlestir = Int(adminGirisi)   // let netlestir = Int(adminGirisi): Kullanıcıdan alınan string girdisi (adminGirisi), Int fonksiyonu kullanılarak tam sayıya (Int) dönüştürülmeye çalışılır. Eğer kullanıcı sayısal olmayan bir şey girmişse, dönüştürme başarısız olur ve netlestir değişkeni nil olur.Yani, netlestir değişkeni, kullanıcıdan alınan sayının tamsayıya dönüştürülmüş halini saklar.
        
    { var numbers: [Int] = []   // Bu satırda boş bir Int dizisi (Array) tanımlanıyor. Bu dizi, ilerleyen adımlarda kullanıcıdan alınan sayıları saklamak için kullanılır. Kullanıcı, kaç sayı girerse girsin, bu sayılar tek tek bu diziye eklenir ve daha sonra bu dizi kullanılarak sayılar toplanır.
        
        for i in  1...netlestir
        {
            print(" \(i). sayıyı girin:")
            
            if let girilenler = readLine(),
                let girilen = Int(girilenler)
            {
                numbers.append(girilen)
                
            }
            
        }
       
        let total = numbers.reduce(0, +)
        /*
         .reduce(0, +): reduce fonksiyonu, dizideki tüm elemanları birleştirip tek bir sonuç üretir. Bu işleme "reduce" denir çünkü dizinin elemanlarını tek bir değere "indirger". İşte burada kullanılan reduce fonksiyonunun iki ana parametresi vardır:
         # İlk Parametre (0): Bu, başlangıç değeridir. Yani toplama işlemine başlamadan önce toplamın başladığı değeri belirtir. Burada 0 kullanarak toplamı sıfırdan başlatıyorsun.
         # kinci Parametre (+): Bu, dizinin elemanlarını nasıl birleştireceğini belirtir. Burada + işlemi, her iki değeri toplamak için kullanılır.
         */
     
        print("Girilen sayıların toplamı: \(total)")

    }
}
    
// topla()


func cıkarma (sayıDizisi: [Int])
{

    print("kaç sayı üzerinden işlem yapmak istiyorsunuz?")
    if let a = readLine() ,
    let b = Int(a)
    { var sayiDizisi : [Int] = []
        
        for i in 1...b
        {
            print(" \(i). sayıyı girin:")
            
            if let girilenler = readLine(),
               let girilen = Int(girilenler)
            {
                sayiDizisi.append(girilen)
                
            }
            
        }
        
        
        let sonuc = sayiDizisi.reduce(0, -)
       print("girilen sayıların farkı : \(sonuc)")
    }
}

// cıkarma()


func carpma () 
{
    print("kaç tane sayıyı birbiriyle çarpmak istiyorsunuz?")
    if let e = readLine() ,
       let d = Int(e)
    {
        var carpılanlar : [Int] = []
        
        for t in 1...d
        {
            print("\(t). sayıyı giriniz")
            if let girilen = readLine(),
               let giriş = Int(girilen)
            {
                carpılanlar.append(giriş)
            }
            
            let carpım = carpılanlar.reduce(1, *)
            print("girilen sayıların birbiriyle çarpım sonucu : \(carpım)")
        }
        
    }
}

// carpma()


func bolme () {
    print("kaç sayıyı birbirine bölmek istiyorsunuz?")
    if let x = readLine(), let y = Int(x) {
        var dizi : [ Int ] = []
        
        for z in 1...y
        {
            print("\(z). sayıyı giriniz")
            if let b = readLine(), let r = Int(b) {
                dizi.append(r)
            }
        }
        let bolum = dizi.reduce(1, /)
        print("girdiğiniz sayıların birbirine bölümünden elde edilen sonuç \(bolum)")
    }
}

// bolme()


/*
 func cıkarma (sayıDizisi: [Double])
{

    print("kaç sayı üzerinden işlem yapmak istiyorsunuz?")
    if let a = readLine() ,
    let b = Int(a)
    { var sayiDizisi : [Double] = []
        
        for i in 1...b
        {
            print(" \(i). sayıyı girin:")
            
            if let girilenler = readLine(),
               let girilen = Double(girilenler)
            {
                sayiDizisi.append(girilen)
                
            }
            
        }
        
        
        let sonuc = sayiDizisi.reduce(0, -)
       print("girilen sayıların farkı : \(sonuc)")
    }
}

cıkarma(sayıDizisi: [Double])
*/

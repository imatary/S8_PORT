.class public Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;
.super Ljava/lang/Object;
.source "BluetoothPbapPhonebookEntry.java"


# instance fields
.field public mId:J

.field public mIndex:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mIndex:I

    iput-wide p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mId:J

    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapPhonebookEntry;->mName:Ljava/lang/String;

    return-void
.end method

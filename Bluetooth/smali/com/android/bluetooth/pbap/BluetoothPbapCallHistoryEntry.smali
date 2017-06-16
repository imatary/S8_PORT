.class public Lcom/android/bluetooth/pbap/BluetoothPbapCallHistoryEntry;
.super Ljava/lang/Object;
.source "BluetoothPbapCallHistoryEntry.java"


# instance fields
.field public mId:J

.field public mIndex:I

.field public mIsNumber:Z

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallHistoryEntry;->mIndex:I

    iput-wide p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallHistoryEntry;->mId:J

    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallHistoryEntry;->mValue:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallHistoryEntry;->mIsNumber:Z

    return-void
.end method

.class Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData$1;
.super Ljava/lang/Object;
.source "IEUCNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;


# direct methods
.method constructor <init>(Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData$1;->this$1:Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;
    .locals 2

    new-instance v0, Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;-><init>(Landroid/os/Parcel;Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;
    .locals 1

    new-array v0, p1, [Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData$1;->newArray(I)[Lcom/sec/ims/euc/IEUCNotification$IEUCMessageData;

    move-result-object v0

    return-object v0
.end method

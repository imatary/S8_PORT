.class public abstract Lcom/sec/ims/euc/IEUC;
.super Ljava/lang/Object;
.source "IEUC.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field protected mDefaultMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageDataType;"
        }
    .end annotation
.end field

.field protected mEUCId:Ljava/lang/String;

.field protected mFrom:Lcom/sec/ims/util/ImsUri;

.field protected mMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TMessageDataType;>;"
        }
    .end annotation
.end field

.field protected mTo:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/euc/IEUC;->mEUCId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/ims/euc/IEUC;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/euc/IEUC;->mFrom:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/euc/IEUC;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/euc/IEUC;->mTo:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUC;->readMessageData(Landroid/os/Parcel;)V

    return-void
.end method

.method protected abstract readMessageData(Landroid/os/Parcel;)V
.end method

.method protected abstract writeMessageData(Landroid/os/Parcel;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/euc/IEUC;->mEUCId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUC;->mFrom:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/ims/euc/IEUC;->mTo:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/ims/euc/IEUC;->writeMessageData(Landroid/os/Parcel;)V

    return-void
.end method

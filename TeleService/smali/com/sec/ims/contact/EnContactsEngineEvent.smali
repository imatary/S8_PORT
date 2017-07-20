.class public Lcom/sec/ims/contact/EnContactsEngineEvent;
.super Lcom/sec/ims/contact/EnContactsEngineRawEvent;
.source "EnContactsEngineEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/contact/EnContactsEngineEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/contact/EnContactsEngineEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/contact/EnContactsEngineEvent$1;

    invoke-direct {v0}, Lcom/sec/ims/contact/EnContactsEngineEvent$1;-><init>()V

    sput-object v0, Lcom/sec/ims/contact/EnContactsEngineEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/ims/contact/EnContactsEngineRawEvent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/contact/EnContactsEngineEvent;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/sec/ims/contact/EnContactsEngineEvent;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

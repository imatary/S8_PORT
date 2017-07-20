.class public abstract Lcom/sec/ims/contact/EnContactsEngineRawEvent;
.super Ljava/lang/Object;
.source "EnContactsEngineRawEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final mAppType:I

.field private final mEventType:I

.field private final mSessionID:I

.field private final mSubEventType:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mAppType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mSessionID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mSubEventType:I

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

    iget v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mAppType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mSessionID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/contact/EnContactsEngineRawEvent;->mSubEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

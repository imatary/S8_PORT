.class public Lcom/sec/ims/ss/data/SSConfigEvent;
.super Ljava/lang/Object;
.source "SSConfigEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;
    }
.end annotation


# instance fields
.field private mData:[B

.field private mEventType:I

.field private mSessionID:I

.field private mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

.field private mSubEventType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;->NOT_INITIALIZED:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

    iput-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mState:Lcom/sec/ims/ss/data/SSConfigEvent$SSCONFIG_STATE;

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

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSessionID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mSubEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/ss/data/SSConfigEvent;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

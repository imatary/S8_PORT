.class public Lcom/sec/ims/volte/VzwSipEngineEvent;
.super Ljava/lang/Object;
.source "VzwSipEngineEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final mDialogID:Ljava/lang/String;

.field private final mEventType:I

.field private final mMessage:Ljava/lang/String;


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/ims/volte/VzwSipEngineEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/volte/VzwSipEngineEvent;->mDialogID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/volte/VzwSipEngineEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

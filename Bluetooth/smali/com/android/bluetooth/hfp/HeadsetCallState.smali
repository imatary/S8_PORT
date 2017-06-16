.class Lcom/android/bluetooth/hfp/HeadsetCallState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mCallState:I

.field mNumActive:I

.field mNumHeld:I

.field mNumber:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    iput p5, p0, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    return-void
.end method

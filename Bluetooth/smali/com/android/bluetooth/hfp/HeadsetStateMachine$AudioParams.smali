.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioParams"
.end annotation


# instance fields
.field mNrec:I

.field mWbs:I


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->getNrec()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->getWbs()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->setNrec(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->setWbs(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mNrec:I

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mWbs:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;-><init>()V

    return-void
.end method

.method private getNrec()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mNrec:I

    return v0
.end method

.method private getWbs()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mWbs:I

    return v0
.end method

.method private setNrec(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mNrec:I

    return-void
.end method

.method private setWbs(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioParams;->mWbs:I

    return-void
.end method

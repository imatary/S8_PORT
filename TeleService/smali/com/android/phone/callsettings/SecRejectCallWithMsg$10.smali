.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;->initNoItemAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDelay:[I

.field private mDirection:[I

.field private mDuration:[I

.field private mInterpolator:[Landroid/animation/TimeInterpolator;

.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    const/16 v1, 0x29b

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDuration:[I

    new-array v0, v3, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDelay:[I

    new-array v0, v3, [I

    aput v3, v0, v2

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDirection:[I

    new-array v0, v3, [Landroid/animation/TimeInterpolator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mInterpolator:[Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDelay:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDirection:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDuration(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mDuration:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;->mInterpolator:[Landroid/animation/TimeInterpolator;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRepeatCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStartPoint(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashState"
.end annotation


# static fields
.field private static final FLASH_FIRED_MASK:I = 0x1

.field private static final FLASH_FUNCTION_MASK:I = 0x20


# instance fields
.field private final mState:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->mState:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/sec/android/gallery3d/data/MediaDetails$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isFlashFired()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->mState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashPresent()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->mState:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

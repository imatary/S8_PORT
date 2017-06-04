.class public final Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.source "StickerMenuResourceBundle.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mStickerName:Ljava/lang/String;

.field private mStickerType:I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    return-void
.end method


# virtual methods
.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerType:I

    return v0
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerName:Ljava/lang/String;

    return-void
.end method

.method public setStickerType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->mStickerType:I

    return-void
.end method

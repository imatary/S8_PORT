.class public Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;
.super Ljava/lang/Object;
.source "GLTextureStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLTextureStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureInfo"
.end annotation


# instance fields
.field public mCounter:I

.field public mHeight:F

.field public mTextureID:I

.field public mWidth:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mTextureID:I

    iput p2, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    iput p3, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    iput p4, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    return-void
.end method

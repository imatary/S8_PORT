.class public Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;
.super Ljava/lang/Object;
.source "BeautyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/beautyface/jni/BeautyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParam"
.end annotation


# instance fields
.field private iCaptureMaxFaceSupport:I

.field public iEyeEnlargementLevel:I

.field public iFeatureNeeded:I

.field private iMode:I

.field private iPreviewMaxFaceSupport:I

.field public iSkinBrightLevel:I

.field public iSkinSoftenLevel:I

.field public iSlenderFaceLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iFeatureNeeded:I

    iput v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iSkinSoftenLevel:I

    iput v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iSkinBrightLevel:I

    iput v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iSlenderFaceLevel:I

    iput v1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iEyeEnlargementLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iMode:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iPreviewMaxFaceSupport:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iCaptureMaxFaceSupport:I

    iput p1, p0, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->iMode:I

    return-void
.end method


# virtual methods
.method public uninit()V
    .locals 0

    return-void
.end method

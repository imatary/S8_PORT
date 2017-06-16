.class public Lcom/samsung/android/beauty/PhotoEditorBeauty;
.super Ljava/lang/Object;
.source "PhotoEditorBeauty.java"


# static fields
.field private static instance:Lcom/samsung/android/beauty/PhotoEditorBeauty;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Init()Z
.end method

.method public static native Release()V
.end method

.method public static native getFaceRect1(I)[I
.end method

.method public static getInstance()Lcom/samsung/android/beauty/PhotoEditorBeauty;
    .locals 2

    sget-object v1, Lcom/samsung/android/beauty/PhotoEditorBeauty;->instance:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/beauty/PhotoEditorBeauty;

    invoke-direct {v1}, Lcom/samsung/android/beauty/PhotoEditorBeauty;-><init>()V

    sput-object v1, Lcom/samsung/android/beauty/PhotoEditorBeauty;->instance:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    :try_start_0
    const-string v1, "PhotoEditorBeauty"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/samsung/android/beauty/PhotoEditorBeauty;->instance:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static native runBeauty([BII[II)V
.end method

.method public static native runFD([BIII)I
.end method

.method public static native setProperty(IIII)V
.end method


# virtual methods
.method public getFaceRect(I)Landroid/graphics/Rect;
    .locals 3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->getFaceRect1(I)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x3

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

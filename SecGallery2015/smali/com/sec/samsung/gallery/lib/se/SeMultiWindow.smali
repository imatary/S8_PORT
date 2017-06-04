.class public Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;
.super Ljava/lang/Object;
.source "SeMultiWindow.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;


# static fields
.field public static final FREE_STYLE:I = 0x2

.field public static final ZONE_B:I = 0x0

.field public static final ZONE_FULL:I = 0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getRectInfo()Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getZoneInfo()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMinimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isScaleWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V
    .locals 0

    return-void
.end method

.class public Lcom/sec/android/mimage/photoretouching/spen/SettingView;
.super Landroid/widget/FrameLayout;
.source "SettingView.java"


# static fields
.field public static final MODE_ERASER:I = 0x2

.field public static final MODE_PEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_SettingView"


# instance fields
.field private mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

.field private mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

.field private mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->createImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->createFontName()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->initSettingView(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->createFontName()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->initSettingView(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->initSettingView(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->createImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->initSettingView(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/spen/SettingView;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/spen/SettingView;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    return-object v0
.end method

.method private static createFontName()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private static createImagePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private initSettingView(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {v1, p1, p3, p2, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;F)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->removePen(I)V

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {v1, p1, p3, p2, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;F)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    const-string v1, "PEDIT_SettingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingView::viewCreation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v8, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    aput-object v0, v1, v8

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->addView(Landroid/view/View;)V

    const-string v1, "PEDIT_SettingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingView::initSettingView:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->close()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->close()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    :cond_1
    return-void
.end method

.method public closeSettingView()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    return-void
.end method

.method public getEraserInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSpenPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSpenSettingEraserLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    return-object v0
.end method

.method public getSpenSettingPenLayout()Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    return-object v0
.end method

.method public getViewMode(I)I
    .locals 2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getViewMode()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getViewMode()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initEraserSetting()V
    .locals 0

    return-void
.end method

.method public initPenSetting()V
    .locals 0

    return-void
.end method

.method public isSettingViewVisible(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isShown()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setCanvasView(Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;)V

    :cond_1
    return-void
.end method

.method public setEraserInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView$2;-><init>(Lcom/sec/android/mimage/photoretouching/spen/SettingView;Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEraserInfoList(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setEraserInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setEraserListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setRemoverListener(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$EventListener;)V

    return-void
.end method

.method public setSpenPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView$1;-><init>(Lcom/sec/android/mimage/photoretouching/spen/SettingView;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSpenPenInfoList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setPenInfoList(Ljava/util/List;)V

    return-void
.end method

.method public setViewMode(II)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setViewMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setViewMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showSettingView(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mEraserSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->mPenSettingView:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toggleShowSettingView(II)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->isSettingViewVisible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->closeSettingView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/spen/SettingView;->setViewMode(II)V

    goto :goto_0
.end method

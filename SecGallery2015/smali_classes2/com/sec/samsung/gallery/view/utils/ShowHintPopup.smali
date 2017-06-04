.class public Lcom/sec/samsung/gallery/view/utils/ShowHintPopup;
.super Ljava/lang/Object;
.source "ShowHintPopup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onButtonLongClick(Landroid/view/View;Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/sec/samsung/gallery/view/utils/ShowHintPopup;->onButtonLongClick(Landroid/view/View;Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private static onButtonLongClick(Landroid/view/View;Landroid/content/Context;II)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x2

    new-array v10, v14, [I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    if-lez p3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    mul-int/lit8 v15, p3, 0x2

    add-int v6, v14, v15

    :goto_1
    const/4 v14, 0x1

    aget v14, v10, v14

    div-int/lit8 v15, v6, 0x2

    add-int v9, v14, v15

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v14, p1

    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    if-lez p2, :cond_4

    move/from16 v2, p2

    :cond_1
    :goto_2
    const-string/jumbo v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v15, 0x7f040043

    const/4 v14, 0x0

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v7, v15, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v14, 0x7f1200b3

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/Toast;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget v14, v5, Landroid/graphics/Rect;->top:I

    sub-int v14, v9, v14

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-ge v14, v15, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x1c

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v14

    add-int/2addr v9, v14

    :cond_2
    const v14, 0x800035

    const/4 v15, 0x0

    aget v15, v10, v15

    sub-int v15, v11, v15

    div-int/lit8 v16, v13, 0x2

    sub-int v15, v15, v16

    invoke-virtual {v3, v14, v15, v9}, Landroid/widget/Toast;->setGravity(III)V

    :goto_3
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    goto/16 :goto_1

    :cond_4
    move-object/from16 v14, p1

    check-cast v14, Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v14, 0x51

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3
.end method

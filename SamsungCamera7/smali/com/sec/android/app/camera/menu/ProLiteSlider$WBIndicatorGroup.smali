.class Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProLiteSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WBIndicatorGroup"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLContext;FFFF[II)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    array-length v3, v0

    add-int/lit8 v13, v3, -0x1

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p7

    array-length v3, v0

    if-ge v12, v3, :cond_2

    const/4 v3, 0x1

    if-eq v12, v3, :cond_1

    move/from16 v0, p8

    invoke-static {v0, v12}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v16

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F

    move-result v7

    move-object/from16 v0, v16

    iget v8, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    aget v3, p7, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v4

    int-to-float v5, v13

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-int/lit8 v4, v13, -0x1

    int-to-float v4, v4

    div-float v14, v3, v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    add-float/2addr v3, v14

    int-to-float v4, v12

    mul-float v15, v3, v4

    const/4 v3, 0x1

    if-le v12, v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    add-float/2addr v3, v14

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    mul-float v15, v3, v4

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/glview/GLButton;->moveBaseLayout(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.class Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlGatherAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final maxTrailLenght:F = 150.0f

.field private static final targetVelocity:F = 150.0f


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

.field timestamp:J

.field private final trail:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;",
            ">;"
        }
    .end annotation
.end field

.field trailLength:F

.field trailLinksLength:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    return-void
.end method

.method private length(FF)F
    .locals 2

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private trimTrailLength()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    const/high16 v1, 0x43160000    # 150.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->dl:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->timestamp:J

    move-wide/from16 v24, v0

    sub-long v24, v16, v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v8, v24, v25

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->timestamp:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getX()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->x:F

    move/from16 v24, v0

    sub-float v9, v18, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->y:F

    move/from16 v24, v0

    sub-float v10, v19, v24

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->length(FF)F

    move-result v7

    const v24, 0x3dcccccd    # 0.1f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move/from16 v24, v0

    add-float v24, v24, v7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    move/from16 v24, v0

    add-float v24, v24, v7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->x:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;-><init>(FFF)V

    invoke-virtual/range {v24 .. v25}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trimTrailLength()V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move/from16 v24, v0

    const/high16 v25, 0x43160000    # 150.0f

    mul-float v25, v25, v8

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_1

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v21, 0x0

    const/4 v5, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    int-to-float v0, v15

    move/from16 v25, v0

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    move/from16 v25, v0

    mul-float v6, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    const v24, 0x3a83126f    # 0.001f

    cmpl-float v24, v6, v24

    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v15, :cond_6

    add-float v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    :cond_2
    cmpl-float v24, v21, v5

    if-lez v24, :cond_4

    move-object/from16 v20, v4

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    :cond_3
    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->dl:F

    move/from16 v24, v0

    add-float v5, v5, v24

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_2

    :cond_4
    sub-float v24, v5, v21

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->dl:F

    move/from16 v25, v0

    div-float v13, v24, v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->x:F

    move/from16 v24, v0

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->x:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v24, v24, v13

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->x:F

    move/from16 v25, v0

    add-float v22, v24, v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->y:F

    move/from16 v24, v0

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->y:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v24, v24, v13

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;->y:F

    move/from16 v25, v0

    add-float v23, v24, v25

    const/16 v24, 0x0

    const/16 v25, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(FFFI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x1

    :goto_1
    if-ge v12, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mThumbDragSet:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->y:F

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(FFFI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public start()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->start()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->x:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->y:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLength:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trailLinksLength:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->timestamp:J

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->trail:Ljava/util/LinkedList;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->x:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$4;->y:F

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$TrailLink;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

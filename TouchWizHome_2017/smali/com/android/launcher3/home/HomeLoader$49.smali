.class Lcom/android/launcher3/home/HomeLoader$49;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->addOrMoveItem(IIIIILandroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$isWidget:Z

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;IZLandroid/content/ComponentName;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$screen:I

    iput-boolean p3, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$isWidget:Z

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$cn:Landroid/content/ComponentName;

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$spanY:I

    iput p7, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellX:I

    iput p8, p0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13300()Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$13400(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$screen:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    const-string v25, "HomeLoader"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "addShortcut : currentPageCount = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " addIndex = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$screen:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v12, v20

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$screen:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13500()Landroid/content/Context;

    move-result-object v27

    const-wide/16 v28, -0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->insertWorkspaceScreen(Landroid/content/Context;IJ)J

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$isWidget:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v16, 0x1

    :goto_1
    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$13600(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$screen:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$isWidget:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13700()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v13

    new-instance v9, Landroid/appwidget/AppWidgetHost;

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13800()Landroid/content/Context;

    move-result-object v25

    const/16 v27, 0x400

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v9, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13900()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v25

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v13, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "HomeLoader"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "addWorkspaceItem : Unable to bind app widget id "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " component "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_1
    :goto_2
    if-nez v6, :cond_7

    monitor-exit v26

    :goto_3
    return-void

    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_3
    new-instance v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v6, v10, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$spanX:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$spanY:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    goto :goto_2

    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cn:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/model/DataLoader;->getItemInfoByComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v27

    if-eqz v27, :cond_6

    iget v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    move/from16 v27, v0

    if-nez v27, :cond_5

    move-object v6, v14

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v14}, Lcom/android/launcher3/home/HomeLoader;->access$11300(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v27

    if-eqz v27, :cond_5

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v6

    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v28, -0x64

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    goto/16 :goto_2

    :cond_7
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellX:I

    move/from16 v28, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellY:I

    move/from16 v29, v0

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$14000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v25

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    if-eqz v19, :cond_9

    sget-object v25, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_8
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v27, v0

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v29, v0

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v30, v0

    add-int v29, v29, v30

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v30, v0

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, -0x1

    move/from16 v0, v27

    iput v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v27

    iput v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    iput-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v16, :cond_a

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x64

    cmp-long v25, v28, v30

    if-eqz v25, :cond_c

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->setPrevContainer(J)V

    const-wide/16 v28, -0x64

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :cond_a
    :goto_5
    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellX:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->val$cellY:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_d

    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "container"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "screen"

    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "cellX"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "cellY"

    iget v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$14100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$14300()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    :cond_b
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    new-instance v27, Lcom/android/launcher3/home/HomeLoader$49$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v8}, Lcom/android/launcher3/home/HomeLoader$49$1;-><init>(Lcom/android/launcher3/home/HomeLoader$49;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$14400(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :goto_7
    monitor-exit v26

    goto/16 :goto_3

    :cond_c
    iget-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    iput-wide v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->oldScreenId:J

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher3/home/HomeLoader;->access$14200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeLoader$49;->this$0:Lcom/android/launcher3/home/HomeLoader;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/HomeLoader;->bindItems(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

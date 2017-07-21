.class Lcom/android/launcher3/home/HomeLoader$42;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeItemsByPosition(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$screen:I

    iput p3, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellX:I

    iput p4, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellY:I

    iput p5, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeLoader$42;->val$spanY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$10700()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v9}, Lcom/android/launcher3/home/HomeLoader;->access$10800(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$screen:I

    if-lt v9, v8, :cond_0

    const-string v9, "HomeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeItemsByPosition : currentPageCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " removeIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$screen:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v9}, Lcom/android/launcher3/home/HomeLoader;->access$10900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$screen:I

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$spanX:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$cellY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeLoader$42;->val$spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v7, v9, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v9}, Lcom/android/launcher3/home/HomeLoader;->access$11000(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v13, :cond_1

    :cond_2
    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v16, v0

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v7, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v9}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HomeLoader$42;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v13, Lcom/android/launcher3/home/HomeLoader$42$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v6}, Lcom/android/launcher3/home/HomeLoader$42$1;-><init>(Lcom/android/launcher3/home/HomeLoader$42;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v9, v13}, Lcom/android/launcher3/home/HomeLoader;->access$11100(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

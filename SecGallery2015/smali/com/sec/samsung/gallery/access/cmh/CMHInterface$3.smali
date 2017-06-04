.class final Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;
.super Ljava/lang/Object;
.source "CMHInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->clearGarbageHiddenFolder(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "hidden_folder_clear_time"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "hidden_folder_clear_time"

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    sub-long v18, v4, v12

    const-wide/32 v20, 0x240c8400

    cmp-long v17, v18, v20

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    # invokes: Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getAvailableFolderNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->access$200(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    # invokes: Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getHiddenFolderList()Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/.face/.shareEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v18, v4, v8

    const-wide/32 v20, 0x240c8400

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    # invokes: Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteFolder(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->access$400(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$3;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "hidden_folder_clear_time"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

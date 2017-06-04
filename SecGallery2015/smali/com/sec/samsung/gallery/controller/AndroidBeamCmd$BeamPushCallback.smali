.class Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;
.super Ljava/lang/Object;
.source "AndroidBeamCmd.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeamPushCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    return-void
.end method

.method private createRecord()Landroid/nfc/NdefRecord;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string/jumbo v4, "AndroidBeamCmd"

    const-string/jumbo v5, "create record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->getFiles()[Ljava/io/File;

    move-result-object v0

    const-string/jumbo v4, "AndroidBeamCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createRecord: mNdefStatus is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v5

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->IsShowErrorInfoDialog(I)Z
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$700(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isUseGalleryDialog()Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$800(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;

    invoke-direct {v5, p0, v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;-><init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v4, v7}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->sendIntentToShowErrorDialog(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->getJSONObject([Ljava/io/File;)[B

    move-result-object v1

    const-string/jumbo v3, "AndroidBeamCmd"

    const-string/jumbo v4, "create record end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x2

    const-string/jumbo v5, "text/DirectShareGallery"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-array v6, v7, [B

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_1
.end method

.method private getBeamIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$400(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.directshare.DirectSharePopUp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.nfc.AndroidBeamPopUp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFileList([Ljava/io/File;)Lorg/json/JSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    array-length v6, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "fileName"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "fileLen"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v7, "filepath"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "subPath"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private getFiles()[Ljava/io/File;
    .locals 20

    const-string/jumbo v16, "AndroidBeamCmd"

    const-string/jumbo v17, "getFiles start"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v11

    const/4 v5, 0x1

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v9, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    instance-of v0, v9, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    move/from16 v17, v0

    if-nez v17, :cond_3

    instance-of v0, v9, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v9, Lcom/sec/android/gallery3d/data/MediaSet;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v10, v9

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    const/16 v17, 0x0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int v13, v13, v17

    goto :goto_2

    :cond_6
    if-nez v13, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    :cond_7
    const/16 v16, 0x1f4

    move/from16 v0, v16

    if-le v13, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mListener:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$300(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;->onGetFilePath()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v6, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$AndroidBeamUtils;->toUriPathArray(Landroid/content/Context;Ljava/util/List;)[Landroid/net/Uri;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v2, v0, [Ljava/io/File;

    const/4 v3, 0x0

    array-length v0, v15

    move/from16 v17, v0

    const/16 v16, 0x0

    move v4, v3

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    aget-object v14, v15, v16

    add-int/lit8 v3, v4, 0x1

    new-instance v18, Ljava/io/File;

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v2, v4

    add-int/lit8 v16, v16, 0x1

    move v4, v3

    goto :goto_3

    :cond_d
    const-string/jumbo v16, "AndroidBeamCmd"

    const-string/jumbo v17, "getFiles End"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getJSONObject([Ljava/io/File;)[B
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "mac"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mimeType"

    const-string/jumbo v3, "text/DirectShareGallery"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "list"

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->getFileList([Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AndroidBeamCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SbeamHelperSbeamPushCallback.getJSONObject : text/DirectShareGallery/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private sendIntentToShowErrorDialog(I)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->getBeamIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string/jumbo v2, "POPUP_MODE"

    const-string/jumbo v3, "no_file_selected"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$600(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    const/4 v3, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "POPUP_MODE"

    const-string/jumbo v3, "from_cloud_file"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const-string/jumbo v2, "POPUP_MODE"

    const-string/jumbo v3, "from_drm_file"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "POPUP_MODE"

    const-string/jumbo v3, "file_limit_exceed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AndroidBeamCmd"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "AndroidBeamCmd"

    const-string/jumbo v4, "createNdefMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->isSbeamOn()Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$400(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->createRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "AndroidBeamCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BeamPushCallback.createNdefMessage : failed ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$500(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->mNdefStatus:I
    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$502(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v4, "com.sec.android.directshare"

    invoke-static {v4}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

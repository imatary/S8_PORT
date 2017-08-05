.class public Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaptureImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0201d0

    iput v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 9

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->-get1(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->-get6(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "CaptureImageViewer"

    const-string/jumbo v1, "SQLiteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29

    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v7, 0x0

    aput-object v6, v8, v7

    const-string/jumbo v6, "mime_type"

    const/4 v7, 0x1

    aput-object v6, v8, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-static {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-get1(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-static {v7}, Lcom/android/phone/callsettings/CaptureImageViewer;->-get6(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v9, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    if-eqz v15, :cond_2

    :try_start_1
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-wrap0(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-wrap0(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-wrap0(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "videocallimages/jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-wrap0(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "videocallimages/jpeg-scramble"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->-wrap0(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    :cond_1
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v0, v24

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v12, :cond_4

    const-string/jumbo v6, ".vci"

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v13, :cond_5

    :cond_3
    move-object/from16 v0, v24

    invoke-static {v12, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v25, v0

    new-instance v6, Landroid/widget/Gallery$LayoutParams;

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v25

    move/from16 v3, v25

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mGalleryItemBackground:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v23

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v16

    const-string/jumbo v6, "CaptureImageViewer"

    const-string/jumbo v7, "SQLiteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, ".vcy"

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_4
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v14, v6

    if-lez v14, :cond_7

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array v0, v14, [B

    move-object/from16 v27, v0

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    new-instance v26, Lcom/android/phone/callsettings/ScrambleLib;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Lcom/android/phone/callsettings/ScrambleLib;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x20

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14, v6}, Lcom/android/phone/callsettings/ScrambleLib;->setScrambleData([BII)V

    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/callsettings/ScrambleLib;->decode()Z

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-static {v0, v7, v14, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {v6, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v17

    move-object/from16 v19, v20

    :goto_3
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v19, :cond_4

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v19, v20

    :cond_7
    if-eqz v19, :cond_4

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v18

    :goto_4
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v19, :cond_4

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    :goto_5
    if-eqz v19, :cond_8

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_6
    throw v6

    :catch_6
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_2
    move-exception v6

    move-object/from16 v19, v20

    goto :goto_5

    :catch_7
    move-exception v17

    goto :goto_3

    :catch_8
    move-exception v18

    move-object/from16 v19, v20

    goto :goto_4
.end method

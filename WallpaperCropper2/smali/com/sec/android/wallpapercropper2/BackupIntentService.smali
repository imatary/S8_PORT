.class public Lcom/sec/android/wallpapercropper2/BackupIntentService;
.super Landroid/app/IntentService;
.source "BackupIntentService.java"


# static fields
.field private static final IMAGE_FILE_NAME_HOME:Ljava/lang/String; = "original_file_home.jpg"

.field private static final IMAGE_FILE_NAME_LOCK:Ljava/lang/String; = "original_file_lock.jpg"

.field public static final KEY_HOME_CROP_RECT:Ljava/lang/String; = "home_crop_rect"

.field public static final KEY_IMAGE_ROTATION:Ljava/lang/String; = "image_rotation"

.field public static final KEY_IS_FROM_THEME_STORE:Ljava/lang/String; = "is_from_theme_store"

.field public static final KEY_LOCK_CROP_RECT:Ljava/lang/String; = "lock_crop_rect"

.field public static final KEY_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final TAG:Ljava/lang/String; = "Cropper2_BackupService"

.field private static final XML_FILE_NAME_HOME:Ljava/lang/String; = "backup_home.xml"

.field private static final XML_FILE_NAME_LOCK:Ljava/lang/String; = "backup_lock.xml"


# instance fields
.field private mWallpaperType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "BackupIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private copyInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "original_file_lock.jpg"

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v2, "original_file_home.jpg"

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    :goto_0
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    const-string/jumbo v3, "Cropper2_BackupService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    const-string/jumbo v0, "Cropper2_BackupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Copy file successful! Used time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :pswitch_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveToXml(Landroid/graphics/Rect;ILjava/lang/String;Z)V
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string/jumbo v0, "wallpaperbackup"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    if-eqz p4, :cond_1

    const-string/jumbo v0, "lw"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    :goto_0
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v2, "left"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v2, "top"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v2, "right"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v2, "bottom"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v2, "rotation"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v0, "Cropper2_BackupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Save crop information: cropRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/File;

    if-eqz p4, :cond_2

    const-string/jumbo v0, "backup_lock.xml"

    :goto_1
    invoke-direct {v4, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, "hw"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "backup_home.xml"
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_BackupService"

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Cropper2_BackupService"

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "Cropper2_BackupService"

    const-string/jumbo v1, "Not have image information!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "wallpaper_type"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I

    const-string/jumbo v0, "is_from_theme_store"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v0, "image_rotation"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "lock_crop_rect"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-string/jumbo v5, "home_crop_rect"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string/jumbo v0, "Cropper2_BackupService"

    const-string/jumbo v1, "Not have crop information!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BackupIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/android/gallery3d/util/Utils;->regenerateInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BackupIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/wallpapercropper2/BackupIntentService;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I

    if-ne v2, v9, :cond_4

    :cond_3
    invoke-direct {p0, v0, v4, v3, v8}, Lcom/sec/android/wallpapercropper2/BackupIntentService;->saveToXml(Landroid/graphics/Rect;ILjava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I

    if-eq v0, v8, :cond_5

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BackupIntentService;->mWallpaperType:I

    if-ne v0, v9, :cond_6

    :cond_5
    invoke-direct {p0, v1, v4, v3, v7}, Lcom/sec/android/wallpapercropper2/BackupIntentService;->saveToXml(Landroid/graphics/Rect;ILjava/lang/String;Z)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_BackupService"

    const-string/jumbo v2, "Can\'t open input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

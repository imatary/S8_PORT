.class public Lcom/arcsoft/beautyface/GetResultFromGallery;
.super Ljava/lang/Object;
.source "GetResultFromGallery.java"


# static fields
.field public static final ACTION_PICK_IMAGE_WITH_GALLERY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ArcSoft_App_GetResultFromGallery"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mCurrentPhotoPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dealwithPickActionMessage(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    move-object v9, v0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v10, "file://"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v0

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_4
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "ArcSoft_App_GetResultFromGallery"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v7, 0x0

    :cond_5
    :goto_1
    throw v0

    :catch_1
    move-exception v8

    const-string/jumbo v3, "ArcSoft_App_GetResultFromGallery"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public goPickContent(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/arcsoft/beautyface/R$string;->select_a_photo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ArcSoft_App_GetResultFromGallery"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/arcsoft/beautyface/GetResultFromGallery;->dealwithPickActionMessage(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/beautyface/GetResultFromGallery;->mCurrentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

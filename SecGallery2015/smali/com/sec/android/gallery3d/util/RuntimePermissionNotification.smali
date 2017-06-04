.class public Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;
.super Ljava/lang/Object;
.source "RuntimePermissionNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetPermissionNoti"

.field private static instance:Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;


# instance fields
.field private mIconColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->instance:Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->instance:Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->instance:Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPermissionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->mIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public show_permission_notification(Landroid/content/Context;Landroid/app/NotificationManager;[Ljava/lang/String;)Z
    .locals 19

    const-string/jumbo v14, "SetPermissionNoti"

    const-string/jumbo v15, "show_permission_notification."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0400e0

    invoke-direct {v2, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v14, 0x7f12020e

    const v15, 0x7f0a0489

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a00c9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f12020f

    const v15, 0x7f0a0320

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0a00c9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v14, 0x7f12021c

    const v15, 0x7f0a03c4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const v14, 0x7f1000c0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->mIconColor:I

    const/4 v3, 0x0

    :goto_1
    array-length v14, v11

    if-ge v3, v14, :cond_2

    aget-object v15, v11, v3

    const/4 v14, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v14, :pswitch_data_0

    const v14, 0x7f120219

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120210

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120216

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120213

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v16, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v16, "android.permission.READ_CONTACTS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v16, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v16, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v16, "android.permission.READ_SMS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x4

    goto :goto_2

    :pswitch_1
    const v14, 0x7f120219

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f12021a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "perm_group_phone_calls"

    const-string/jumbo v17, "drawable"

    const-string/jumbo v18, "android"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getPermissionIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "permgrouplab_phone"

    const-string/jumbo v16, "string"

    const-string/jumbo v17, "android"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const v14, 0x7f12021b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_2
    const v14, 0x7f120210

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120211

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "perm_group_contacts"

    const-string/jumbo v17, "drawable"

    const-string/jumbo v18, "android"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getPermissionIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "permgrouplab_contacts"

    const-string/jumbo v16, "string"

    const-string/jumbo v17, "android"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v14, 0x7f120212

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_3
    const v14, 0x7f120216

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120217

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "perm_group_storage"

    const-string/jumbo v17, "drawable"

    const-string/jumbo v18, "android"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getPermissionIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "permgrouplab_storage"

    const-string/jumbo v16, "string"

    const-string/jumbo v17, "android"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const v14, 0x7f120218

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_4
    const v14, 0x7f120213

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v14, 0x7f120214

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "perm_group_sms"

    const-string/jumbo v17, "drawable"

    const-string/jumbo v18, "android"

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/util/RuntimePermissionNotification;->getPermissionIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "permgrouplab_sms"

    const-string/jumbo v16, "string"

    const-string/jumbo v17, "android"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const v14, 0x7f120215

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/sec/android/gallery3d/app/PermissionsRequestSetting;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v14, "PermissionsRequestSetting"

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0a0489

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f0a00c9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v14, 0x7f0a0320

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const v17, 0x7f0a00c9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v14, 0x7f02008b

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v14, 0x7f12021c

    invoke-virtual {v2, v14, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    iput-object v2, v9, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const-string/jumbo v14, "GALLERY_PERMISSION_NOTI"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_4
        -0x1833add0 -> :sswitch_2
        -0x550ba9 -> :sswitch_0
        0x516a29a7 -> :sswitch_3
        0x75dd2d9c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

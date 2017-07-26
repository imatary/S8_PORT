.class public Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
.super Ljava/lang/Object;
.source "GameToolsNotificationBuilder.java"


# instance fields
.field private mBigText:Ljava/lang/String;

.field private mContentText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContentText:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mBigText:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    return-void
.end method

.method private getNotificationAction(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    new-instance v0, Landroid/app/Notification$Action$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/game/gametools/floatingui/internalservice/HunResultIntentService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, "HUN_FROM_TOUCHWIZ"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mBigText:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContentText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public setBigText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mBigText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setButtonArrays([Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->setButtonArrays([Ljava/lang/String;[Ljava/lang/String;[Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setButtonArrays([Ljava/lang/String;[Ljava/lang/String;[Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p1

    array-length v2, p3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    aget-object v2, p2, v0

    aget-object v3, p1, v0

    aget-boolean v4, p3, v0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getNotificationAction(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    aget-object v2, p2, v0

    aget-object v3, p1, v0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getNotificationAction(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setContentAction(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentAction(Ljava/lang/String;Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContentText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLargeIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_0
    return-object p0

    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setShowWhen(Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSwipeAction(Ljava/lang/String;)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSwipeAction(Ljava/lang/String;Z)Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/util/GameToolsNotificationBuilder;->getPendingIntent(Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-object p0
.end method

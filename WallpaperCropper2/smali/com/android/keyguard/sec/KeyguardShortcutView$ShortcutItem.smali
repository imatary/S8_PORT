.class public Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_shortcut_item:I

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->shortcut_item_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/android/keyguard/R$id;->icon:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {p1, p3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_2
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_0
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->zzz_tts_lockscreen_shortcut_swipe_touch_exploration:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setFocusableInTouchMode(Z)V

    return-void

    :cond_1
    move v0, v7

    goto/16 :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-void

    :cond_4
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_6
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-void

    :cond_8
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->zzz_tts_lockscreen_shortcut_swipe:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPadding()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->onPressed(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v5

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    const-string/jumbo v0, "ShortcutWidget"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "onTouch()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "faded out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "action down"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v2, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1602(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, v6, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, v6, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action up/cancel mDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v0

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_7

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    invoke-interface {v0, v10, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v3, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :pswitch_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    sub-float v4, v6, v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v5, v5

    sub-float v5, v6, v5

    float-to-int v5, v5

    int-to-double v6, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v4, v5

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-double v6, v6

    div-double/2addr v6, v12

    div-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    int-to-double v6, v0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v3

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    invoke-interface {v0, v10, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v2, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_MOVE mDistance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshBadgeCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    return-void
.end method

.method public setOpacity(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setDistanceRatio(D)V

    return-void
.end method

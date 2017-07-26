.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;
.super Landroid/app/Activity;
.source "RequestActivity.java"


# static fields
.field public static final a:I = 0x2711

.field public static final b:Ljava/lang/String; = "OVERLAY_PERMISSION"

.field public static final c:Ljava/lang/String; = "REQ_PERMISSON"

.field public static final d:Ljava/lang/String; = "BUNDLE_REQ_PERMISSION"

.field public static final e:Ljava/lang/String; = "BUNDLE_REQ_CODE"

.field public static final f:Ljava/lang/String; = "BUNDLE_INTENT"


# instance fields
.field private g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    goto :goto_0
.end method

.method private a(IILandroid/content/Intent;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "yang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yang PERMISSIONS_REQ_NUM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "REQ_PERMISSON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BUNDLE_REQ_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BUNDLE_REQ_CODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "yang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yang RequestActivity onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a(IILandroid/content/Intent;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "yang"

    const-string/jumbo v1, "yang RequestActivity onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$layout;->activity_request:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->setContentView(I)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "OVERLAY_PERMISSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "android.intent.action.PICK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "REQ_PERMISSON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->a()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "BUNDLE_INTENT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v3, "BUNDLE_REQ_CODE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->a(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45efe99a -> :sswitch_1
        -0x2084c6c2 -> :sswitch_0
        0xadacc97 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "yang"

    const-string/jumbo v1, "RequestActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "yang"

    const-string/jumbo v1, "RequestActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->g:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a/b;->a(I[Ljava/lang/String;[I)V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/RequestActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string/jumbo v0, "yang"

    const-string/jumbo v1, "RequestActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

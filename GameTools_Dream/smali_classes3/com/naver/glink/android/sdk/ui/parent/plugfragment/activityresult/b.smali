.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;
.super Landroid/app/Fragment;
.source "PlugMediaProjectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PlugRecordHelperFragment"

    sput-object v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;-><init>()V

    return-object v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(IILandroid/content/Intent;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/activityresult/b$a;->a()V

    :cond_0
    return-void
.end method

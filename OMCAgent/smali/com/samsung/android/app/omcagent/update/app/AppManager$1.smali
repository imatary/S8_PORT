.class Lcom/samsung/android/app/omcagent/update/app/AppManager$1;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/app/AppManager;->installPackage(Landroid/net/Uri;Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/app/AppManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/app/AppManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppManager$1;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

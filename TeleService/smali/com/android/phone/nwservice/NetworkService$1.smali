.class Lcom/android/phone/nwservice/NetworkService$1;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/NetworkService;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/NetworkService;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/NetworkService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    invoke-virtual {v6}, Lcom/android/phone/nwservice/NetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string/jumbo v6, "com.android.phone"

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "com.android.phone.nwservice.VoiceMail"

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "com.android.phone.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Lcom/android/phone/nwservice/NetworkService;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/android/phone/nwservice/NetworkService;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    const-string/jumbo v7, "ClassNotFound"

    invoke-static {v6, v7}, Lcom/android/phone/nwservice/NetworkService;->-wrap0(Lcom/android/phone/nwservice/NetworkService;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/nwservice/NetworkService$1;->this$0:Lcom/android/phone/nwservice/NetworkService;

    const-string/jumbo v7, "NameNotFound"

    invoke-static {v6, v7}, Lcom/android/phone/nwservice/NetworkService;->-wrap0(Lcom/android/phone/nwservice/NetworkService;Ljava/lang/String;)V

    goto :goto_0
.end method

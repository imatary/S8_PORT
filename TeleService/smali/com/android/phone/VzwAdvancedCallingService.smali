.class public Lcom/android/phone/VzwAdvancedCallingService;
.super Landroid/app/IntentService;
.source "VzwAdvancedCallingService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "VzwAdvancedCallingService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private isComponentDisabled()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.VzwAdvancedCalling"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAdvCallMenu(Z)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string/jumbo v2, "VzwAdvancedCallingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdvCallMenu: show["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    if-eqz p1, :cond_1

    const-string/jumbo v2, "VzwAdvancedCallingService"

    const-string/jumbo v3, "updateAdvCallMenu: enabling VzwAdvancedCalling"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.VzwAdvancedCalling"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "VzwAdvancedCallingService"

    const-string/jumbo v3, "updateAdvCallMenu: disabling VzwAdvancedCalling"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.VzwAdvancedCalling"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    const-string/jumbo v0, "VzwAdvancedCallingService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const-string/jumbo v0, "VzwAdvancedCallingService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v2, "VzwAdvancedCallingService"

    const-string/jumbo v3, "onHandleIntent"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isAdvCallSupported()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingService;->isComponentDisabled()Z

    move-result v1

    const-string/jumbo v2, "VzwAdvancedCallingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHandleIntent: isAdvCallSupported["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], component["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "com.android.phone.VzwAdvancedCalling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::disabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/VzwAdvancedCallingService;->updateAdvCallMenu(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/VzwAdvancedCallingService;->updateAdvCallMenu(Z)V

    goto :goto_0
.end method

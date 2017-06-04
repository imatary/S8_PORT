.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-ge v3, v2, :cond_2

    :cond_0
    const-string/jumbo v2, "checkPermissions : permission is null."

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I
    .locals 8

    const/4 v4, 0x1

    const/4 v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "checkPermissions : permission is null."

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :goto_0
    return v4

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_3

    aget-object v6, p1, v1

    invoke-static {p0, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aget-object v6, p1, v1

    invoke-static {p0, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, p1, v1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkPermissions. PermissionList Size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0, v2, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static groupPermission([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const-string/jumbo v4, "groupPermission."

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_5

    aget-object v4, p0, v2

    const-string/jumbo v5, "STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v3, "EXTERNAL_STORAGE"

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, p0, v2

    const-string/jumbo v5, "PHONE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v3, "PHONE_STATE"

    goto :goto_1

    :cond_3
    aget-object v4, p0, v2

    const-string/jumbo v5, "CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v3, "CONTACTS"

    goto :goto_1

    :cond_4
    aget-object v4, p0, v2

    const-string/jumbo v5, "SMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v3, "SMS"

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "groupPermission. return size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, p1

    if-ge v4, v3, :cond_0

    const-string/jumbo v3, "shouldShowRequestPermissionRationale : permission is null."

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldShowRequestPermissionRationale. permission : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldShowRequestPermissionRationale. need to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldShowRequestPermissionRationale. Never Ask Again : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "first_permission_request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v2, "shouldShowRequestPermissionRationale. FirstTime pass"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "first_permission_request"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    move v2, v3

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "permission"

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->groupPermission([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto/16 :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v3, p0

    if-ge v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v4, p0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget v0, p0, v3

    if-nez v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

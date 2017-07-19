.class public Lcom/samsung/android/common/util/GeneralUtils;
.super Ljava/lang/Object;
.source "GeneralUtils.java"


# static fields
.field private static final GSF_SIGNATURES:Landroid/content/pm/Signature;

.field private static localRuntime:Ljava/lang/Runtime;

.field private static run_process:Ljava/lang/Process;


# instance fields
.field private mPreviousVerifyAppsValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/common/util/GeneralUtils;->GSF_SIGNATURES:Landroid/content/pm/Signature;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/common/util/GeneralUtils;->localRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    return-void
.end method

.method public static applyHideIndicatorOnLandscape(Landroid/content/Context;ILandroid/view/Window;)V
    .locals 2

    sget-boolean v1, Lcom/samsung/android/common/feature/CommonFeature;->mIsHideStateBarOnLandscape:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public static applyTransparencyIndicator(Landroid/view/Window;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7ffff400

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public static changePermission(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Make dir is failed"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->E(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 770 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/samsung/android/common/util/GeneralUtils;->runEXEC(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGMT()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss (z Z)"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHomescreenList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    const-string v4, "Context is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "PackageManager is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getNumWithRTL(F)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    float-to-double v4, p0

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNumWithRTL(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "not RTL"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v2, "ActivityManager is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    const-string v2, "NoPackage"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "ActivityManager RunningAppProcesses is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    const-string v2, ""

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTopProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v2, "ActivityManager is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    const-string v2, "NoPackage"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "ActivityManager RunningTaskInfo is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    const-string v2, "NoPackage"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static gotoWifiSettings(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static varargs isFOTAScreen(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const-string v3, "Context is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/common/util/GeneralUtils;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Fail to get top package!!"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, p1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top activity is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/common/Log;->D(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isGSFPackagedInstalled(Landroid/content/Context;)Z
    .locals 8

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string v4, "Context is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "PackageManager is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v4, "com.google.android.gsf"

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v4, "PackageInfo is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_3
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    sget-object v7, Lcom/samsung/android/common/util/GeneralUtils;->GSF_SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v7, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static varargs isIdleScreen(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v4, "Context is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/common/util/GeneralUtils;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "Fail to get top package!!"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    array-length v6, p1

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v1, p1, v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/common/util/GeneralUtils;->getHomescreenList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top activity is not expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/common/Log;->D(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isMyScreen(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/common/util/GeneralUtils;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Fail to get top package!!"

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackagedInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/common/util/GeneralUtils;->isPackagedInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPackagedInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v3, "Context is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "package name is empty"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "PackageManager is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isPackagedInstalledLastest(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string v4, "Context is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "package name is empty"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v4, "PackageManager is null"

    invoke-static {v4}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v2, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isVerifierInstalled(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static requestSystemKeyEvent(IZLandroid/content/ComponentName;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runEXEC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "cmd is empty"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmd : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v8, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v8, "chmod"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-array v5, v13, [Z

    fill-array-data v5, :array_0

    new-array v4, v13, [Z

    fill-array-data v4, :array_1

    const-string v8, "755"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    aput-boolean v11, v5, v7

    aput-boolean v7, v5, v11

    aput-boolean v11, v5, v12

    aput-boolean v7, v4, v7

    aput-boolean v7, v4, v11

    aput-boolean v7, v4, v12

    :cond_2
    :goto_1
    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "permission : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v5, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " owner : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v8, "-R"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v8, v3

    :goto_2
    if-ge v7, v8, :cond_8

    aget-object v2, v3, v7

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "644"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    aput-boolean v11, v5, v7

    aput-boolean v11, v5, v11

    aput-boolean v7, v5, v12

    aput-boolean v7, v4, v7

    aput-boolean v11, v4, v11

    aput-boolean v7, v4, v12

    goto/16 :goto_1

    :cond_4
    const-string v8, "660"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    aput-boolean v11, v5, v7

    aput-boolean v11, v5, v11

    aput-boolean v7, v5, v12

    aput-boolean v7, v4, v7

    aput-boolean v11, v4, v11

    aput-boolean v7, v4, v12

    goto/16 :goto_1

    :cond_5
    const-string v8, "770"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    aput-boolean v11, v5, v7

    aput-boolean v11, v5, v11

    aput-boolean v11, v5, v12

    aput-boolean v11, v4, v7

    aput-boolean v11, v4, v11

    aput-boolean v11, v4, v12

    goto/16 :goto_1

    :cond_6
    const-string v8, "775"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    aput-boolean v11, v5, v7

    aput-boolean v11, v5, v11

    aput-boolean v11, v5, v12

    aput-boolean v7, v4, v7

    aput-boolean v7, v4, v11

    aput-boolean v11, v4, v12

    goto/16 :goto_1

    :cond_7
    const-string v8, "664"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    aput-boolean v11, v5, v7

    aput-boolean v11, v5, v11

    aput-boolean v7, v5, v12

    aput-boolean v7, v4, v7

    aput-boolean v11, v4, v11

    aput-boolean v11, v4, v12

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/omcagent/common/FileUtils;->setPermission(Ljava/lang/String;[Z[Z)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/omcagent/common/FileUtils;->setPermission(Ljava/lang/String;[Z[Z)Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static setApplicationEnableSetting(Landroid/content/Context;I)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "Context is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "PackageManager is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setComponentEnableSetting(Landroid/content/Context;Ljava/lang/Class;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v3, "Context is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "PackageManager is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    move v2, v3

    goto :goto_0
.end method

.method public static startProcessLog(I)V
    .locals 9

    const-string v4, ""

    const-string v0, "data/data/com.samsung.android.app.omcagent/files"

    packed-switch p0, :pswitch_data_0

    :goto_0
    sget-object v6, Lcom/samsung/android/common/util/GeneralUtils;->run_process:Ljava/lang/Process;

    if-eqz v6, :cond_1

    const-string v6, "logging is already started"

    invoke-static {v6}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const-string v4, "omc_check.txt"

    goto :goto_0

    :pswitch_1
    const-string v4, "omc_composing.txt"

    goto :goto_0

    :cond_1
    const-string v6, "/data/log"

    invoke-static {v6}, Lcom/samsung/android/common/util/GeneralUtils;->changePermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "omcagent_logFile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "omcagent file delete : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/common/Log;->D(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Make file is failed"

    invoke-static {v6}, Lcom/samsung/android/common/Log;->E(Ljava/lang/String;)V

    :cond_3
    sget-object v6, Lcom/samsung/android/common/util/GeneralUtils;->localRuntime:Ljava/lang/Runtime;

    const-string v7, "/system/bin/logcat -c"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    sget-object v6, Lcom/samsung/android/common/util/GeneralUtils;->localRuntime:Ljava/lang/Runtime;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 660 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    sget-object v6, Lcom/samsung/android/common/util/GeneralUtils;->localRuntime:Ljava/lang/Runtime;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/logcat -s OMC_AGENT:V -v time -f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/common/util/GeneralUtils;->run_process:Ljava/lang/Process;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start logging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/common/util/GeneralUtils;->getGMT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static stopProcessLog(I)V
    .locals 11

    const-string v4, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stop logging : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/common/util/GeneralUtils;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/common/util/GeneralUtils;->run_process:Ljava/lang/Process;

    if-eqz v8, :cond_1

    const-string v8, "destroy logging process"

    invoke-static {v8}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/common/util/GeneralUtils;->run_process:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    const/4 v8, 0x0

    sput-object v8, Lcom/samsung/android/common/util/GeneralUtils;->run_process:Ljava/lang/Process;

    packed-switch p0, :pswitch_data_0

    :goto_0
    const-string v8, "copy omc log file to log folder"

    invoke-static {v8}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/data/com.samsung.android.app.omcagent/files"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/log"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyLog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v7}, Lcom/samsung/android/app/omcagent/common/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    sget-object v8, Lcom/samsung/android/common/util/GeneralUtils;->localRuntime:Ljava/lang/Runtime;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 640 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    const-string v8, "run_process is null"

    invoke-static {v8}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v4, "omc_check.txt"

    goto/16 :goto_0

    :pswitch_1
    const-string v4, "omc_composing.txt"

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_4
    throw v8

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v8

    move-object v6, v7

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v6, v7

    move-object v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public revertVerifyAppFeatureDisable(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/common/util/GeneralUtils;->isVerifierInstalled(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVerifyAppFeatureDisable: isVerifierInstalled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revertVerifyAppFeatureDisable: Previous Verifier value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    iget v3, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setVerifyAppFeatureDisable(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/common/util/GeneralUtils;->isVerifierInstalled(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVerifyAppFeatureDisable: isVerifierInstalled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVerifyAppFeatureDisable : current value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/common/util/GeneralUtils;->mPreviousVerifyAppsValue:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

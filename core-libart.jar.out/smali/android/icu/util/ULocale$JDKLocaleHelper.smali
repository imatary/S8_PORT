.class final Landroid/icu/util/ULocale$JDKLocaleHelper;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDKLocaleHelper"
.end annotation


# static fields
.field private static final synthetic -android-icu-util-ULocale$CategorySwitchesValues:[I

.field private static final JAVA6_MAPDATA:[[Ljava/lang/String;

.field private static eDISPLAY:Ljava/lang/Object;

.field private static eFORMAT:Ljava/lang/Object;

.field private static hasLocaleCategories:Z

.field private static hasScriptsAndUnicodeExtensions:Z

.field private static mForLanguageTag:Ljava/lang/reflect/Method;

.field private static mGetDefault:Ljava/lang/reflect/Method;

.field private static mGetExtension:Ljava/lang/reflect/Method;

.field private static mGetExtensionKeys:Ljava/lang/reflect/Method;

.field private static mGetScript:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

.field private static mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method private static synthetic -getandroid-icu-util-ULocale$CategorySwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android-icu-util-ULocale$CategorySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android-icu-util-ULocale$CategorySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android-icu-util-ULocale$CategorySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 17

    const/4 v12, 0x0

    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    const/4 v12, 0x0

    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    const/4 v12, 0x3

    new-array v12, v12, [[Ljava/lang/String;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "ja_JP_JP"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "ja_JP"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "calendar"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string/jumbo v14, "japanese"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "ja"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "no_NO_NY"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "nn_NO"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x0

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const/4 v14, 0x0

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "nn"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "th_TH_TH"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "th_TH"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "numbers"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string/jumbo v14, "thai"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "th"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const/4 v14, 0x2

    aput-object v13, v12, v14

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    :try_start_0
    const-class v13, Ljava/util/Locale;

    const-string/jumbo v14, "getScript"

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const-class v13, Ljava/util/Locale;

    const-string/jumbo v14, "getExtensionKeys"

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    const-class v12, Ljava/util/Locale;

    const-string/jumbo v13, "getExtension"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    const-class v13, Ljava/util/Locale;

    const-string/jumbo v14, "getUnicodeLocaleKeys"

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    const-class v13, Ljava/util/Locale;

    const-string/jumbo v14, "getUnicodeLocaleAttributes"

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    const-class v12, Ljava/util/Locale;

    const-string/jumbo v13, "getUnicodeLocaleType"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    const-class v12, Ljava/util/Locale;

    const-string/jumbo v13, "forLanguageTag"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    const/4 v12, 0x1

    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    const-class v12, Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    const/4 v12, 0x0

    array-length v13, v3

    :goto_1
    if-ge v12, v13, :cond_0

    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "java.util.Locale$Category"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const-class v12, Ljava/util/Locale;

    const-string/jumbo v13, "getDefault"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    const-class v12, Ljava/util/Locale;

    const-string/jumbo v13, "setDefault"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const-class v15, Ljava/util/Locale;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    const-string/jumbo v13, "name"

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v1, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    array-length v14, v10

    move v13, v12

    :goto_3
    if-ge v13, v14, :cond_6

    aget-object v7, v10, v13

    const/4 v12, 0x0

    nop

    nop

    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v12, "DISPLAY"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sput-object v7, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    :cond_4
    :goto_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_3

    :cond_5
    const-string/jumbo v12, "FORMAT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sput-object v7, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_6
    sget-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    if-eqz v12, :cond_1

    sget-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_2

    :catch_5
    move-exception v6

    goto/16 :goto_0

    :catch_6
    move-exception v5

    goto/16 :goto_0

    :catch_7
    move-exception v8

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;
    .locals 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-boolean v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->-getandroid-icu-util-ULocale$CategorySwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    sget-object v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Locale;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    return-object v5

    :pswitch_0
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Landroid/icu/util/ULocale$JDKLocaleHelper$1;

    invoke-direct {v4, p0}, Landroid/icu/util/ULocale$JDKLocaleHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasLocaleCategories()Z
    .locals 1

    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    return v0
.end method

.method public static isOriginalDefaultLocale(Ljava/util/Locale;)Z
    .locals 5

    const/4 v3, 0x0

    sget-boolean v2, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    :try_start_0
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "user.language"

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "user.country"

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "user.variant"

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "user.script"

    invoke-static {v2}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    return v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "user.language"

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "user.country"

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user.variant"

    invoke-static {v3}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    return v3
.end method

.method public static setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    .locals 7

    sget-boolean v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->-getandroid-icu-util-ULocale$CategorySwitchesValues()[I

    move-result-object v4

    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 1

    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v8

    if-eqz v5, :cond_2

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v1, v5, v7

    :cond_1
    :goto_1
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v3, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/Locale;

    aget-object v6, v2, v7

    aget-object v7, v2, v8

    aget-object v8, v2, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v1, v5, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_0

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 1

    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_0
.end method

.method private static toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, ""

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v29

    const/4 v8, 0x0

    const/16 v18, 0x0

    :try_start_0
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/16 v30, 0x0

    check-cast v30, [Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/lang/String;

    move-object/from16 v26, v0

    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    const/16 v30, 0x0

    check-cast v30, [Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v15

    move-object/from16 v19, v18

    move-object v9, v8

    :goto_0
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Character;

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v30

    const/16 v31, 0x75

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    const/16 v30, 0x0

    check-cast v30, [Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Set;

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_0

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    :catch_0
    move-exception v12

    move-object/from16 v18, v19

    :goto_2
    new-instance v30, Ljava/lang/RuntimeException;

    move-object/from16 v0, v30

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v30

    :cond_0
    move-object v8, v9

    :cond_1
    :try_start_3
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    const/16 v30, 0x0

    check-cast v30, [Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Set;

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    sget-object v30, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v22, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    if-eqz v24, :cond_17

    const-string/jumbo v30, "va"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_2

    move-object/from16 v29, v24

    move-object/from16 v18, v19

    :goto_4
    move-object/from16 v19, v18

    goto :goto_3

    :cond_2
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v18, v19

    goto :goto_4

    :cond_3
    if-nez v19, :cond_16

    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_5
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-exception v12

    goto/16 :goto_2

    :cond_4
    :try_start_5
    sget-object v30, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v14, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_15

    if-nez v19, :cond_14

    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7

    move-object v8, v9

    :goto_7
    move-object/from16 v19, v18

    move-object v9, v8

    goto/16 :goto_0

    :catch_2
    move-exception v13

    :goto_8
    new-instance v30, Ljava/lang/RuntimeException;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v30

    :cond_5
    move-object/from16 v18, v19

    move-object v8, v9

    :cond_6
    const-string/jumbo v30, "no"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string/jumbo v30, "NO"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string/jumbo v30, "NY"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string/jumbo v25, "nn"

    const-string/jumbo v29, ""

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_8

    const/16 v30, 0x5f

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_9

    const/16 v30, 0x5f

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_a

    const/16 v30, 0x5f

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const/16 v30, 0x5f

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v8, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v30

    if-eqz v30, :cond_c

    const/16 v30, 0x2d

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    if-nez v18, :cond_e

    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    :cond_e
    const-string/jumbo v30, "attribute"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v18, :cond_13

    const/16 v30, 0x40

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    invoke-static/range {v22 .. v22}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_10

    const-string/jumbo v24, "yes"

    :cond_10
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_11
    if-eqz v4, :cond_12

    const/16 v30, 0x3b

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v30, 0x3d

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    const/4 v4, 0x1

    goto :goto_b

    :cond_13
    new-instance v30, Landroid/icu/util/ULocale;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V

    return-object v30

    :catch_3
    move-exception v12

    move-object/from16 v18, v19

    move-object v8, v9

    goto/16 :goto_2

    :catch_4
    move-exception v12

    move-object v8, v9

    goto/16 :goto_2

    :catch_5
    move-exception v13

    move-object/from16 v18, v19

    move-object v8, v9

    goto/16 :goto_8

    :catch_6
    move-exception v13

    move-object/from16 v18, v19

    goto/16 :goto_8

    :catch_7
    move-exception v13

    move-object v8, v9

    goto/16 :goto_8

    :cond_14
    move-object/from16 v18, v19

    goto/16 :goto_6

    :cond_15
    move-object/from16 v18, v19

    move-object v8, v9

    goto/16 :goto_7

    :cond_16
    move-object/from16 v18, v19

    goto/16 :goto_5

    :cond_17
    move-object/from16 v18, v19

    goto/16 :goto_4

    :cond_18
    move-object/from16 v18, v19

    goto/16 :goto_7
.end method

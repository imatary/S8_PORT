.class public Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;
.super Ljava/lang/Object;
.source "SettingsSystemWrapper.java"


# static fields
.field public static final PEN_HOVERING:Ljava/lang/String;

.field public static final PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

.field public static final PEN_HOVERING_LINK_PREVIEW:Ljava/lang/String; = "pen_hovering_link_preview"

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_OWNER:I


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pen_hovering_information_preview"

    sput-object v0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

    const-string v0, "pen_hovering"

    sput-object v0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING:Ljava/lang/String;

    sput v1, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->USER_OWNER:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "pen_hovering_information_preview"

    sput-object v0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

    const-string v0, "pen_hovering"

    sput-object v0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->PEN_HOVERING:Ljava/lang/String;

    sput v1, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->USER_OWNER:I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;

    new-instance v2, Lcom/samsung/android/spen/libse/SeSettingsSystem;

    invoke-direct {v2}, Lcom/samsung/android/spen/libse/SeSettingsSystem;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;-><init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SE"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;

    new-instance v2, Lcom/samsung/android/spen/libsdl/SdlSettingsSystem;

    invoke-direct {v2}, Lcom/samsung/android/spen/libsdl/SdlSettingsSystem;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;-><init>(Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v2, "SDL"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/spen/libwrapper/utils/PlatformException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spen/libwrapper/SettingsSystemWrapper;->instance:Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

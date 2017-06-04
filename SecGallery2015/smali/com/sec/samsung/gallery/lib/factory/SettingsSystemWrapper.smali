.class public Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;
.super Ljava/lang/Object;
.source "SettingsSystemWrapper.java"


# static fields
.field public static final ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field public static final ASSISTANT_MENU:Ljava/lang/String;

.field public static final EMERGENCY_MODE:Ljava/lang/String;

.field public static final PHONE1_ON:Ljava/lang/String;

.field public static final PHONE2_ON:Ljava/lang/String;

.field public static final ULTRA_POWERSAVING_MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ultra_powersaving_mode"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    const-string/jumbo v0, "emergency_mode"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->EMERGENCY_MODE:Ljava/lang/String;

    const-string/jumbo v0, "phone1_on"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->PHONE1_ON:Ljava/lang/String;

    const-string/jumbo v0, "phone2_on"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->PHONE2_ON:Ljava/lang/String;

    const-string/jumbo v0, "assistant_menu"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->ASSISTANT_MENU:Ljava/lang/String;

    const-string/jumbo v0, "accessibility_magnifier"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/lib/se/SeSettingsSystem;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

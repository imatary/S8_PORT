.class public final enum Lcom/android/phone/utils/AppLogging$AppLoggingAction;
.super Ljava/lang/Enum;
.source "AppLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/AppLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppLoggingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/utils/AppLogging$AppLoggingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/utils/AppLogging$AppLoggingAction;

.field public static final enum GENERAL_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

.field public static final enum GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

.field public static final enum STATUS_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

.field public static final enum STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v1, "GENERAL_SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/utils/AppLogging$AppLoggingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    new-instance v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v1, "STATUS_SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/utils/AppLogging$AppLoggingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    new-instance v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v1, "GENERAL_MULTI"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/utils/AppLogging$AppLoggingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    new-instance v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v1, "STATUS_MULTI"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/utils/AppLogging$AppLoggingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->$VALUES:[Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/utils/AppLogging$AppLoggingAction;
    .locals 1

    const-class v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/utils/AppLogging$AppLoggingAction;
    .locals 1

    sget-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->$VALUES:[Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    return-object v0
.end method

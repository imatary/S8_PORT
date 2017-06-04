.class public final enum Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;
.super Ljava/lang/Enum;
.source "UnifiedLoggingType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum BIXBY_ENTER:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum BIXBY_EXIT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum BIXBY_OUTPUT_PARAM:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum GCIM_FEATURE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum GCIM_FEATURE_EXTRA:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum GCIM_FEATURE_EXTRA_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum GCIM_FEATURE_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum GCIM_FEATURE_VALUE_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum SA_EVENT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum SA_EVENT_DETAIL:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum SA_EVENT_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

.field public static final enum SA_SCREEN:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "GCIM_FEATURE"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "GCIM_FEATURE_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "GCIM_FEATURE_EXTRA"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_EXTRA:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "GCIM_FEATURE_VALUE_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_VALUE_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "GCIM_FEATURE_EXTRA_STATUS"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_EXTRA_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "SA_SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_SCREEN:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "SA_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "SA_EVENT_VALUE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "SA_EVENT_DETAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT_DETAIL:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "BIXBY_ENTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_ENTER:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "BIXBY_EXIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_EXIT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const-string/jumbo v1, "BIXBY_OUTPUT_PARAM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_OUTPUT_PARAM:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_EXTRA:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_VALUE_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->GCIM_FEATURE_EXTRA_STATUS:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_SCREEN:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT_VALUE:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->SA_EVENT_DETAIL:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_ENTER:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_EXIT:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->BIXBY_OUTPUT_PARAM:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->$VALUES:[Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->$VALUES:[Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    return-object v0
.end method

.class final enum Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;
.super Ljava/lang/Enum;
.source "GameIconDisplayOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DISPLAY_OPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

.field public static final enum BOTH:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

.field public static final enum LAUNCHER_ONLY:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->BOTH:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    new-instance v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    const-string/jumbo v1, "LAUNCHER_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->LAUNCHER_ONLY:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    sget-object v1, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->BOTH:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->LAUNCHER_ONLY:Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->$VALUES:[Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->$VALUES:[Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    invoke-virtual {v0}, [Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/gametools/setting/activity/GameIconDisplayOptionActivity$DISPLAY_OPTION;

    return-object v0
.end method

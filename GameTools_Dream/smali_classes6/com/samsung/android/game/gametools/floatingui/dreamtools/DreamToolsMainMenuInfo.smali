.class public Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;
.super Ljava/lang/Object;
.source "DreamToolsMainMenuInfo.java"


# static fields
.field public static final TAG_BACK_KEY_LOCK:Ljava/lang/String; = "tag_back_key_lock_main"

.field public static final TAG_NO_ALERT:Ljava/lang/String; = "tag_no_alert_main"

.field public static final TAG_RECENT_KEY_LOCK:Ljava/lang/String; = "tag_recent_key_lock_main"


# instance fields
.field private final mMenuCnt:I

.field private final mMenuStringIDs:[I

.field private final mMenuTag:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuCnt:I

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "tag_no_alert_main"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tag_recent_key_lock_main"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_back_key_lock_main"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuTag:[Ljava/lang/String;

    new-array v0, v2, [I

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_FULL_SCREEN:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_KEY:I

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_BACK_KEY:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuStringIDs:[I

    return-void
.end method


# virtual methods
.method public getMenuCnt()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMenuString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuStringIDs:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuStringID(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuStringIDs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMenuTag(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->mMenuTag:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

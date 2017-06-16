.class final enum Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;
.super Ljava/lang/Enum;
.source "SpenSettingPenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "scrollBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

.field public static final enum SCROLL_NORMAL:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

.field public static final enum SCROLL_PRESS:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    const-string v1, "SCROLL_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->SCROLL_NORMAL:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    const-string v1, "SCROLL_PRESS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->SCROLL_PRESS:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->SCROLL_NORMAL:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->SCROLL_PRESS:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->$VALUES:[Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->$VALUES:[Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$scrollBar;

    return-object v0
.end method

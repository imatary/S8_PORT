.class public Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewInfo"
.end annotation


# instance fields
.field public bottomMargin:I

.field public hasMargins:Z

.field public hasWH:Z

.field public height:I

.field public isText:Z

.field public isWeight:Z

.field public leftMargin:I

.field public rightMargin:I

.field public textAppearance:I

.field public textSize:I

.field public topMargin:I

.field public view:Landroid/view/View;

.field public weight:F

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->width:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->height:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->leftMargin:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->rightMargin:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->topMargin:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->bottomMargin:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->textAppearance:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->textSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->weight:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->hasMargins:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->hasWH:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->view:Landroid/view/View;

    return-void
.end method

.method public static add(Ljava/util/ArrayList;Landroid/view/View;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public setHeight(I)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->height:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->hasWH:Z

    return-object p0
.end method

.method public setMargins(IIII)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->hasMargins:Z

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->leftMargin:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->topMargin:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->rightMargin:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->bottomMargin:I

    return-object p0
.end method

.method public setTextAppearance(I)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->textAppearance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->isText:Z

    return-object p0
.end method

.method public setTextSize(I)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->textSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->isText:Z

    return-object p0
.end method

.method public setWeight(F)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->weight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->isWeight:Z

    return-object p0
.end method

.method public setWidth(I)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->width:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$ViewInfo;->hasWH:Z

    return-object p0
.end method

.class Lcom/android/phone/RecordCallsAutomaticallyList$6;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyList.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;->initNoItemAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$6;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCapStyle(I)Landroid/graphics/Paint$Cap;
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getLineColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$6;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v0

    return v0
.end method

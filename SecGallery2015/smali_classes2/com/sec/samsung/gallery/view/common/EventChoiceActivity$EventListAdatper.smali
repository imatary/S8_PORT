.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;
.super Landroid/widget/BaseAdapter;
.source "EventChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdatper"
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04009e

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V

    const v3, 0x7f120144

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f120146

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f120148

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const v3, 0x7f120143

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    iput p1, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->position:I

    if-nez p1, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1900(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItem(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_3

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventChoiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ArrayIndexOutOfBoundsException length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_5

    if-lez p1, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2000()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v3, v2, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;I)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->getItem(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public refreshAdapter(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v3, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v3, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshChannelNameListAdapter(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->mList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->notifyDataSetChanged()V

    return-void
.end method

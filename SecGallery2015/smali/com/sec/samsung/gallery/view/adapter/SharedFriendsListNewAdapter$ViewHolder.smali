.class Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SharedFriendsListNewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private cancelSharedButton:Landroid/widget/Button;

.field private checkBox:Landroid/widget/CheckBox;

.field private expireView:Landroid/widget/TextView;

.field private iconDimView:Landroid/widget/ImageView;

.field private iconTextView:Landroid/widget/TextView;

.field private iconView:Landroid/widget/ImageView;

.field private nameView:Landroid/widget/TextView;

.field private sendLinkButton:Landroid/widget/Button;

.field private smsIconView:Landroid/widget/TextView;

.field private waitingView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconDimView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconDimView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->waitingView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->waitingView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->expireView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->expireView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->smsIconView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->smsIconView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->cancelSharedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->cancelSharedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->sendLinkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->sendLinkButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->iconTextView:Landroid/widget/TextView;

    return-object p1
.end method

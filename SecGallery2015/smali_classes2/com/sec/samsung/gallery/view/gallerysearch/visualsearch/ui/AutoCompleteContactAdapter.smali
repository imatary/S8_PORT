.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;
.super Landroid/widget/CursorAdapter;
.source "AutoCompleteContactAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;
    }
.end annotation


# static fields
.field public static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_SELECTION:Ljava/lang/String; = "display_name like \'%"

.field public static final CONTACT_URI:Landroid/net/Uri;

.field private static final INDEX_DISPLAY_NAME:I = 0x1

.field private static final INDEX_PHOTO_ID:I = 0x3

.field private static final INDEX_RAW_CONTACT_ID:I = 0x2


# instance fields
.field private mAutoCompleteContactObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "name_raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mAutoCompleteContactObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;Ljava/lang/String;JZ)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;Ljava/lang/String;JZ)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public registerAutoCompleteContactObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mAutoCompleteContactObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    return-void
.end method

.method public runQueryForBixby(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "display_name"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "display_name like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

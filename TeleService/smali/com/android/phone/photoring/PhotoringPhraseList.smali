.class public Lcom/android/phone/photoring/PhotoringPhraseList;
.super Landroid/app/Activity;
.source "PhotoringPhraseList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;,
        Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private bCallSetupViewsOnResume:Z

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mScreenMode:I

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private maPhrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field private maRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field mcbSelectAll:Landroid/widget/CheckBox;

.field mllSelectAll:Landroid/widget/LinearLayout;

.field mlvPhrases:Landroid/widget/ListView;

.field mlvRecent:Landroid/widget/ListView;

.field mmiDel:Landroid/view/MenuItem;

.field mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

.field mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

.field mtvPhrases:Landroid/view/View;

.field mtvRecent:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/phone/photoring/PhotoringPhraseList;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/photoring/PhotoringPhraseList;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/photoring/PhotoringPhraseList;->viewPhrase(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->NORMAL_SCREEN:I

    iput v1, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->DELETE_SCREEN:I

    iput v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private initScreen()V
    .locals 1

    const v0, 0x7f1001e8

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    const v0, 0x7f1001e9

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvRecent:Landroid/view/View;

    const v0, 0x7f1001eb

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    const v0, 0x7f1001ec

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvPhrases:Landroid/view/View;

    const v0, 0x7f1001e5

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    const v0, 0x7f1001e6

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    return-void
.end method

.method private loadData(I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    :cond_0
    const-string/jumbo v3, "PhotoringPhraseList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadData list : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/photoring/PhotoRingDB;->getPhrasesByType(I)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v18, 0x0

    if-eqz v5, :cond_2

    const-string/jumbo v3, "/data/user/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "/data/user/"

    const-string/jumbo v9, "/data/user_de/"

    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x1

    :cond_2
    if-eqz v6, :cond_3

    const-string/jumbo v3, "/data/user/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "/data/user/"

    const-string/jumbo v9, "/data/user_de/"

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/16 v18, 0x1

    :cond_3
    if-eqz v18, :cond_4

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/phone/photoring/PhotoRingDB;->updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_4
    new-instance v9, Lcom/android/phone/photoring/PhotoringPhrase;

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/phone/photoring/PhotoringPhrase;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadData id = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ", message = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v9, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    if-eqz v9, :cond_7

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ", path = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v9, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    if-eqz v9, :cond_8

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ", thumb = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v9, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    if-eqz v9, :cond_9

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ", type = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "PhotoringPhraseList"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v2}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    return-void

    :cond_7
    const-string/jumbo v4, "..."

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "..."

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "..."

    goto :goto_2
.end method

.method private returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "PhotoringPhraseList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectedPhrase.. = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/photoring/PhotoringPhraseList;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contentPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/photoring/PhotoringPhraseList;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->finish()V

    return-void

    :cond_0
    const-string/jumbo v2, "..."

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "..."

    goto :goto_1
.end method

.method private setupViews()V
    .locals 11

    const/4 v5, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string/jumbo v3, "PhotoringPhraseList"

    const-string/jumbo v4, "setupViews"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->invalidateOptionsMenu()V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    if-ne v3, v5, :cond_1

    const v3, 0x7f0d091b

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhraseList;->setTitle(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/photoring/PhotoringPhraseList$1;

    invoke-direct {v4, p0}, Lcom/android/phone/photoring/PhotoringPhraseList$1;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v5}, Lcom/android/phone/photoring/PhotoringPhraseList;->loadData(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    :goto_1
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    new-instance v4, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvRecent:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoringPhraseList;->loadData(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    :goto_3
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    new-instance v4, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvPhrases:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    :goto_4
    const v3, 0x7f1001e4

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    const v4, 0x7f1001e7

    invoke-virtual {p0, v4}, Lcom/android/phone/photoring/PhotoringPhraseList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    const v3, 0x7f0d0908

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhraseList;->setTitle(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mllSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->clear()V

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvRecent:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-float v3, v2, v10

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maRecent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvRecent:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v3}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->clear()V

    goto/16 :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mtvPhrases:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-float v3, v2, v10

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->maPhrases:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mlvPhrases:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhraseList;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method private showToast(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private viewPhrase(J)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/photoring/PhotoringPhraseList;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "callmessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "contentPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringPhraseList;->returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v4, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    return v8

    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v8, "type"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "id"

    invoke-virtual {v3, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoringPhraseList;->startActivity(Landroid/content/Intent;)V

    iput-boolean v9, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    goto :goto_0

    :pswitch_2
    new-instance v2, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/phone/photoring/PhotoRingDB;->getPhraseById(J)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v1, :cond_2

    const-string/jumbo v8, "file://"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const v8, 0x7f0d05c3

    invoke-direct {p0, v8}, Lcom/android/phone/photoring/PhotoringPhraseList;->showToast(I)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "PhotoringPhraseList"

    const-string/jumbo v2, "<<onCreate>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04009d

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringPhraseList;->setContentView(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->initScreen()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const v1, 0x7f0d050e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0d0510

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0d0510

    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f0d050b

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    invoke-interface {p1, v3, v0, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0d050d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mmiDel:Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "PhotoringPhraseList"

    const-string/jumbo v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v5, 0x102002c

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->finish()V

    return v6

    :cond_0
    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/photoring/PhotoringPhraseList;->startActivity(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    goto :goto_0

    :pswitch_1
    iput v6, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    goto :goto_0

    :pswitch_2
    iput v8, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/phone/photoring/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5, v1}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isChecked(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5, v1}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/photoring/PhotoringPhrase;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-wide v6, v4, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5, v1}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isChecked(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5, v1}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getItem(I)Lcom/android/phone/photoring/PhotoringPhrase;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-wide v6, v4, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    iput v8, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    const v5, 0x7f0d05c3

    invoke-direct {p0, v5}, Lcom/android/phone/photoring/PhotoringPhraseList;->showToast(I)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "PhotoringPhraseList"

    const-string/jumbo v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MCIDTemplate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "PhotoringPhraseList"

    const-string/jumbo v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoringPhraseList;->setupViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->bCallSetupViewsOnResume:Z

    :cond_0
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/ia/PhotoringPhraseListStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/PhotoringPhraseListStateListener;-><init>(Lcom/android/phone/photoring/PhotoringPhraseList;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MCIDTemplate"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PhoneMCID"

    const-string/jumbo v1, "Carrier"

    const-string/jumbo v2, "Value"

    const-string/jumbo v3, "lgt"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhraseList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MCIDTemplate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneMCID"

    const-string/jumbo v1, "Carrier"

    const-string/jumbo v2, "Value"

    const-string/jumbo v3, "kt"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

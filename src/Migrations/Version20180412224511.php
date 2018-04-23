<?php declare(strict_types = 1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20180412224511 extends AbstractMigration
{
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE project DROP FOREIGN KEY FK_2FB3D0EE2DA66B91');
        $this->addSql('DROP INDEX UNIQ_2FB3D0EE2DA66B91 ON project');
        $this->addSql('ALTER TABLE project CHANGE front_image_id front_art_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE project ADD CONSTRAINT FK_2FB3D0EE6ED9A3F3 FOREIGN KEY (front_art_id) REFERENCES artwork (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_2FB3D0EE6ED9A3F3 ON project (front_art_id)');
    }

    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE project DROP FOREIGN KEY FK_2FB3D0EE6ED9A3F3');
        $this->addSql('DROP INDEX UNIQ_2FB3D0EE6ED9A3F3 ON project');
        $this->addSql('ALTER TABLE project CHANGE front_art_id front_image_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE project ADD CONSTRAINT FK_2FB3D0EE2DA66B91 FOREIGN KEY (front_image_id) REFERENCES artwork (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_2FB3D0EE2DA66B91 ON project (front_image_id)');
    }
}
